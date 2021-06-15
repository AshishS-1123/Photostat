public class Photostat.Application : Gtk.Application {
    
    construct {
        application_id = "com.github.PhotostatPhoto.Photostat";
        flags = ApplicationFlags.FLAGS_NONE;
    }
    
    public override void activate () {
        Gtk.Settings.get_default ().set_property ("gtk-icon-theme-name", "elementary");
        Gtk.Settings.get_default ().set_property ("gtk-theme-name", "io.elementary.stylesheet.blueberry");
        Gtk.Settings.get_default ().gtk_application_prefer_dark_theme = true;
        
        var window = new Photostat.SetupWindow (this);
        window.show_all ();
        this.add_window (window);
        
        var quit_action = new SimpleAction ("quit", null);
        
        this.add_action (quit_action);
        set_accels_for_action ("app.quit", {"<Control>q"});
        
        quit_action.activate.connect (() => {
            if (window != null) {
                window.destroy ();
            }
        });
    }
}

public static int main (string[] args) {
    var application = new Photostat.Application ();
    return application.run (args);
}