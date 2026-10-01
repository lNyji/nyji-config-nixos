{
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 16384; # 16 GiB
    }
  ];

  zramSwap.enable = true;
}