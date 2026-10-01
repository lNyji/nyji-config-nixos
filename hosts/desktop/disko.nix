{
  disko.devices = {
    disk.main = {
      type = "disk";

      # Temporário.
      # Antes da instalação, substituir pelo /dev/disk/by-id/...
      device = "/dev/sdb";

      content = {
        type = "gpt";

        partitions = {
          ESP = {
            size = "1G";
            type = "EF00";

            content = {
              type = "filesystem";
              format = "vfat";
              mountpoint = "/boot";
              mountOptions = [ "umask=0077" ];
            };
          };

          root = {
            size = "120G";

            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/";
            };
          };

          home = {
            size = "100%";

            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/home";
            };
          };
        };
      };
    };
  };
}