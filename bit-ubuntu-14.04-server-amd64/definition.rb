Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size => '1024',
  :disk_size => '65536',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'Ubuntu_64',
  :iso_file => "ubuntu-14.04-server-amd64.iso",
  :iso_src => "http://mirror.bit.edu.cn/ubuntu-releases/14.04/ubuntu-14.04-server-amd64.iso",
  :iso_md5 => "01545fa976c8367b4f0d59169ac4866c",
  :iso_download_timeout => "1000",
  :boot_wait => "4",
  :boot_cmd_sequence => [
    '<Esc><Esc><Enter>',
    '/install/vmlinuz noapic preseed/url=http://%IP%:%PORT%/preseed.cfg ',
    'debian-installer=en_US auto locale=en_US kbd-chooser/method=us ',
    'hostname=%NAME% ',
    'fb=false debconf/frontend=noninteractive ',
    'keyboard-configuration/modelcode=SKIP keyboard-configuration/layout=us keyboard-configuration/variant=us console-setup/ask_detect=false ',
    'initrd=/install/initrd.gz -- <Enter>'
],
  :kickstart_port => "7122",
  :kickstart_timeout => "10000",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "shutdown -P now",
  :postinstall_files => [
   "build_time.sh",
   "apt.sh",
   "locale.sh",
   "sudo.sh",
   "vagrant.sh",
   "ruby.sh",
   "chef.sh",
   "puppet.sh",
   "vbox.sh",
   # "parallels.sh",
   "cleanup.sh"
  ],
  :postinstall_timeout => "10000",
  :virtualbox => {
   :vm_options => [
    'rtcuseutc' => 'on'
   ]
  }
})
