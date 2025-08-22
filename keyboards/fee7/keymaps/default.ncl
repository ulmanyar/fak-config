let { tap, hold, combo, td, .. } = import "fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
let mod = tap.reg.mod in

# Keymap definition
{
  layers = [
    [ # Layer 0
      # Load savestate
      kc.LEFT & mod.lalt & mod.lsft & hold.reg.layer 1 & hold.reg.behavior {},
      # Import savestate
      kc.RGHT & mod.lalt & mod.lsft & hold.reg.layer 1 & hold.reg.behavior {},
    ],
    [ # Layer 1
      # Previous savestate
      kc.UP & mod.lalt & mod.lsft,
      # Next savestate
      kc.DOWN & mod.lalt & mod.lsft,
    ],
  ]
}
