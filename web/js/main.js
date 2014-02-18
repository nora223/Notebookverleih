/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 * Diese Funktion wird nach dem Laden der Seite automatisch aufgerufen.
 * Hier nutzen wir jQuery, um die Navigation und den Fußbereich aufzubauen.
 * Die benötigten Werte liefert uns das "content"-Objekt, das in content.js
 * definiert ist.
 */
$(function() {
    insert_page_title();
    insert_navigation_html();
    insert_footer_html();
    load_page("login");
});

/**
 * Einfügen des Seitentitels ins Dokument.
 */
function insert_page_title() {
    $("#topbar .logo").text(content.pageName);
}

/**
 * HTML für Navigationszeile ins Dokument einfügen.
 */
function insert_navigation_html() {
    var navbar_items_html = "";

    $.each(content.navbar, function(index, entry) {
        var page_def = content.pages[entry];

        if (page_def) {
            navbar_items_html += '<li><a href="#" onclick="load_page(\'' + entry + '\')">' + page_def["title"] + '</a></li>';
        }
    });

    $("#topbar nav ul").html(navbar_items_html);
}

/**
 * HTML für Fußzeile ins Dokument einfügen.
 */
function insert_footer_html() {
    var footer_html = "";

    $.each(content.footer, function(index, entry) {
        var page_def = content.pages[entry];

        if (page_def) {
            footer_html += '<li><a href="#" onclick="load_page(\'' + entry + '\')">' + page_def["title"] + '</a></li>';
        }
    });

    footer_html += "&copy; " + new Date().getFullYear() + " " + content.pageName;
    $("#footer").html(footer_html);
}

/**
 * Nachladen des Seiteninhalts per Ajax. Der Name der zu ladenden Seite
 * muss in content.pages enthalten sein. Über page_data kann ein Objekt
 * übergeben werden, dass in der globalen Variablen page_data abgelegt und
 * in der neuen Seite wieder ausgelesen werden kann.
 *
 * @param page_id Schlüsselwert für content.pages
 * @param page_data Optionale Zusatzdaten für die neue Seite
 */
first_page_load = true;

function load_page(page_id, page_data) {
    var page_def = content.pages[page_id];
    if (!page_def)
        return false;
    window.page_data = page_data;

    document.title = content.pageName + " | " + page_def.title;

    var fetch_url = document.URL.slice(0, document.URL.lastIndexOf("/")) + "/" + page_def.url;

    $.ajax(fetch_url, {
        isLocal: true,
        mimeType: "text/html",
        success: function(data, status, xhr) {
            var main_div = $("#main");

            if (!first_page_load) {
                main_div.slideUp(function() {
                    main_div.html(data);
                    handle_forms_clear_default();
                    main_div.slideDown();
                });
            } else {
                main_div.html(data);
                handle_forms_clear_default();
            }

            first_page_load = false;
        }
    });

    return false;
}

/**
 * Ausgegrauten Defaulttext aus den Formularfeldern löschen, sobald der Anwender
 * dort etwas eingeben will. Wenn die Felder leer sind, wird der Text wieder
 * eingefügt.
 */
function handle_forms_clear_default() {
    $(".cleardefault").each(function() {
        this.defaultValue = this.value;

        $(this).focus(function() {
            if (this.value == this.defaultValue) {
                this.value = "";
                $(this).removeClass("cleardefault");
            }
        });

        $(this).blur(function() {
            if (this.value == "") {
                this.value = this.defaultValue;
                $(this).addClass("cleardefault");
            }
        });
    });
}

/**
 * Anzeige einer Infonachricht statt alert().
 */
function show_message(message) {
    $("#message").html(message);
    $("#message").fadeIn(1000).delay(4000).fadeOut(1000);
}
