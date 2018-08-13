namespace eBooks {
	public class MainWindow : Gtk.Application {

		public MainWindow () {
		    Object (
		        application_id: "com.github.rafaas.ebooks",
		        flags: ApplicationFlags.FLAGS_NONE
		    );
		}

		protected override void activate () {
		    var main_window = new Gtk.ApplicationWindow (this);
		    main_window.default_height = 300;
		    main_window.default_width = 300;
		    main_window.title = "eBooks";
		    main_window.show_all ();
		}

		public static int main (string[] args) {
			var app = new MainWindow ();

		    return app.run (args);
		}

	}
}
