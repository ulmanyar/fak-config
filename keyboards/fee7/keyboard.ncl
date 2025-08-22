let { DirectPinKey, .. } = import "fak/keyboard.ncl" in
let { CH552T, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552T,
  usb_dev = {
    vendor_id = 65255,  # 0xFEE7
    product_id = 65255, # 0xF007
    product_ver = 1,    # 0x01
  },
  keys =
    let D = DirectPinKey in
    [
        D 12, D 13,
    ]
}
