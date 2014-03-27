gcn-scrypt
==========

Scrypt opencl kernel written in AMD GCN ISA assembly language

### Supported GPUs
Only tested on my R9 270

### Hashrate
By now, the hashrate is slower than the original kernel compiled by AMD APP SDK.
On my R9 270, gcn-scrypt hashes at 470KH/s, while the original kernel hashes at 488KH/s.
I'm working on optimizing the hashrate.

### Usage
* Build [clyfish/sgminer](https://github.com/clyfish/sgminer)
* Build [clyfish/gcnasm](https://github.com/clyfish/gcnasm)
* Set `gcnasm` in PATH, then `make`.
* Copy `kernel.bin` or `kernel_lds.bin` in `output` to sgminer director, rename to correct name, eg `pswPitcairnglg2tc5121nf10w256l4.bin`.
* Run sgminer

### Notice
`kernel_lds.bin` uses 84 VGPR, so it can run 12 wavefronts per compute unit,
while `kernel.bin` and the original kernel can only run 8 wavefronts per compute unit.
But, on my R9 270, `kernel.bin` hashes at 470KH/s, and `kernel_lds.bin` hashes at 440KH/s.

### Donations
* BTC: 1N9THnTL2Xp7fDktEZR5QGrr7tjVLkg5oH
* LTC: LZ8G5P553yFBVai4desySw3CNqnU9ynEVm
* DOGE: DL37GuBD8yrbG14Krit9rmXFe9PpXAfB1w
