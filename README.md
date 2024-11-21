# ClevoNP60HibernationFix
A systemd service to fix hibernation&amp;resume on clevo np60 laptops

## Usage

### 0. Check the reason why hibernation fails where if it is the pci devices that causes the issue, note them down and put them in the disable_usb_controller.sh. Adjust the file accordingly.

### 1. Put disable_usb_controller.sh under /usr/local/bin and give it appropriate permissions

### 2. Put disable-usb-controllers.service under /etc/systemd/system

### 3. sudo systemctl enable disable-usb-controllers.service

### 4. Test it by hibernating and resuming as many times as you like

## Note

### "echo 1 > /sys/bus/pci/rescan" might be helpful for kde hangs after resume. Need time to test.
