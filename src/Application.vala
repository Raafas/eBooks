using Gtk;

namespace eBooks {
    public class BooksFileViewer : Window {
        
        public BooksFileViewer () {
			var header = new HeaderBar();
			header.title = "eBooks";
			header.set_subtitle("eBook manager");
			header.show_close_button = true;
			header.spacing = 0;
			
			this.window_position = WindowPosition.CENTER;
			set_titlebar(header);
			set_default_size(500, 600);
        }
        
        public static int main (string[] args) {
			Gtk.init(ref args);
			
			var window = new BooksFileViewer();
			window.destroy.connect(Gtk.main_quit);
			window.show_all();
			
			Gtk.main();
			
			return 0;
        }
    }
}