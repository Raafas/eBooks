using LibUSB;

namespace eBooks {

	public class Devices {

		Context context;
		Device[] devices;


		public Device getDevices {
			Context.init (out context);
			context.get_device_list (out devices);
		}
	}
}
