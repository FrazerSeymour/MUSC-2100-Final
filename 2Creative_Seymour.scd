s.boot;
s.quit;

(
// Bus SynthDef
SynthDef("Bus", { arg freq = 440, pan = 0;
	Out.ar(0, Pan2.ar(SinOsc.ar(freq), pan));
}).send(s);

// Stolen from Help - this will record to the disk
SynthDef("Diskout", {arg bufnum;
	DiskOut.ar(bufnum, In.ar(0,2));
}).send(s);
)

(
// 1A College/Edinburgh
SystemClock.sched(1, { a = Synth("Bus", ["freq", 440, "pan", 0.25]) });
SystemClock.sched(10, { a.free; a = Synth("Bus", ["freq", 440, "pan", 0.25]) });
SystemClock.sched(37, { a.free; a = Synth("Bus", ["freq", 440, "pan", 0.25]) });
SystemClock.sched(73, { a.free; a = Synth("Bus", ["freq", 440, "pan", 0.25]) });
SystemClock.sched(109, { a.free; a = Synth("Bus", ["freq", 440, "pan", 0.25]) });
SystemClock.sched(167, { a.free });

// 1B College/Edinburgh
SystemClock.sched(1, { b = Synth("Bus", ["freq", 440, "pan", -0.5]) });
SystemClock.sched(10, { b.free; b = Synth("Bus", ["freq", 440, "pan", -0.5]) });
SystemClock.sched(37, { b.free; b = Synth("Bus", ["freq", 440, "pan", -0.5]) });
SystemClock.sched(73, { b.free; b = Synth("Bus", ["freq", 440, "pan", -0.5]) });
SystemClock.sched(109, { b.free; b = Synth("Bus", ["freq", 440, "pan", -0.5]) });
SystemClock.sched(167, { b.free });

// 2A West Loop
SystemClock.sched(1, { c = Synth("Bus", ["freq", 659.25, "pan", -1]) });
SystemClock.sched(10, { c.free; c = Synth("Bus", ["freq", 659.25, "pan", -1]) });
SystemClock.sched(40, { c.free });
SystemClock.sched(41.5, { c = Synth("Bus", ["freq", 659.25, "pan", -1]) });
SystemClock.sched(73, { c.free; c = Synth("Bus", ["freq", 659.25, "pan", -1]) });
SystemClock.sched(109, { c.free; c = Synth("Bus", ["freq", 659.25, "pan", -1]) });
SystemClock.sched(167, { c.free });

// 2B West Loop
SystemClock.sched(1, { d = Synth("Bus", ["freq", 880, "pan", -0.75]) });
SystemClock.sched(10, { d.free; d = Synth("Bus", ["freq", 880, "pan", -0.75]) });
SystemClock.sched(40, { d.free });
SystemClock.sched(46, { d = Synth("Bus", ["freq", 880, "pan", -0.75]) });
SystemClock.sched(73, { d.free; d = Synth("Bus", ["freq", 880, "pan", -0.75]) });
SystemClock.sched(109, { d.free; d = Synth("Bus", ["freq", 880, "pan", -0.75]) });
SystemClock.sched(167, { d.free });

// 3A West Loop
SystemClock.sched(1, { e = Synth("Bus", ["freq", 880, "pan", 0]) });
SystemClock.sched(10, { e.free; e = Synth("Bus", ["freq", 880, "pan", 0]) });
SystemClock.sched(40, { e.free });
SystemClock.sched(46, { e = Synth("Bus", ["freq", 880, "pan", 0]) });
SystemClock.sched(73, { e.free; e = Synth("Bus", ["freq", 880, "pan", 0]) });
SystemClock.sched(109, { e.free; e = Synth("Bus", ["freq", 880, "pan", 0]) });
SystemClock.sched(167, { e.free });

// 3B West Loop
SystemClock.sched(1, { f = Synth("Bus", ["freq", 659.25, "pan", 1]) });
SystemClock.sched(10, { f.free; f = Synth("Bus", ["freq", 659.25, "pan", 1]) });
SystemClock.sched(37, { f.free; f = Synth("Bus", ["freq", 659.25, "pan", 1]) });
SystemClock.sched(41.5, { f.free; f = Synth("Bus", ["freq", 659.25, "pan", 1]) });
SystemClock.sched(73, { f.free; f = Synth("Bus", ["freq", 659.25, "pan", 1]) });
SystemClock.sched(109, { f.free; f = Synth("Bus", ["freq", 659.25, "pan", 1]) });
SystemClock.sched(167, { f.free });

// 5 Gordon
SystemClock.sched(1, { g = Synth("Bus", ["freq", 293.66, "pan", 0.5]) });
SystemClock.sched(10, { g.free; g = Synth("Bus", ["freq", 293.66, "pan", 0.5]) });
SystemClock.sched(40, { g.free });
SystemClock.sched(41.5, { g = Synth("Bus", ["freq", 293.66, "pan", 0.5]) });
SystemClock.sched(73, { g.free; g = Synth("Bus", ["freq", 293.66, "pan", 0.5]) });
SystemClock.sched(112, { g.free });
SystemClock.sched(113.5, { g = Synth("Bus", ["freq", 293.66, "pan", 0.5]) });
SystemClock.sched(167, { g.free });

// 6 Harvard/Ironwood
SystemClock.sched(1, { h = Synth("Bus", ["freq", 392, "pan", -0.5]) });
SystemClock.sched(10, { h.free; h = Synth("Bus", ["freq", 392, "pan", -0.5]) });
SystemClock.sched(37, { h.free; h = Synth("Bus", ["freq", 392, "pan", -0.5]) });
SystemClock.sched(73, { h.free; h = Synth("Bus", ["freq", 392, "pan", -0.5]) });
SystemClock.sched(109, { h.free; h = Synth("Bus", ["freq", 392, "pan", -0.5]) });
SystemClock.sched(167, { h.free });

// 7 Kortwright/Downey
SystemClock.sched(1, { i = Synth("Bus", ["freq", 392, "pan", -0.75]) });
SystemClock.sched(10, { i.free; i = Synth("Bus", ["freq", 392, "pan", -0.75]) });
SystemClock.sched(37, { i.free; i = Synth("Bus", ["freq", 392, "pan", -0.75]) });
SystemClock.sched(73, { i.free; i = Synth("Bus", ["freq", 392, "pan", -0.75]) });
SystemClock.sched(109, { i.free; i = Synth("Bus", ["freq", 392, "pan", -0.75]) });
SystemClock.sched(167, { i.free });

// 15 University/College
SystemClock.sched(1, { j = Synth("Bus", ["freq", 440, "pan", -0.75]) });
SystemClock.sched(10, { j.free; j = Synth("Bus", ["freq", 440, "pan", -0.75]) });
SystemClock.sched(37, { j.free; j = Synth("Bus", ["freq", 440, "pan", -0.75]) });
SystemClock.sched(73, { j.free; j = Synth("Bus", ["freq", 440, "pan", -0.75]) });
SystemClock.sched(109, { j.free; j = Synth("Bus", ["freq", 440, "pan", -0.75]) });
SystemClock.sched(167, { j.free });

// 16 Southgate
k = Synth("Bus", ["freq", 293.66, "pan", -0.5]);
SystemClock.sched(9, { k.free });
SystemClock.sched(11.5 , { k = Synth("Bus", ["freq", 293.66, "pan", -0.5]) });
SystemClock.sched(38.5, { k.free });
SystemClock.sched(40.75, { k = Synth("Bus", ["freq", 293.66, "pan", -0.5]) });
SystemClock.sched(74.5, { k.free; k = Synth("Bus", ["freq", 293.66, "pan", -0.5]) });
SystemClock.sched(110.5, { k.free });
SystemClock.sched(112.75, { k = Synth("Bus", ["freq", 293.66, "pan", -0.5]) });
SystemClock.sched(166, { k.free });

// 50 Stone Road Express
SystemClock.sched(19.17, { l = Synth("Bus", ["freq", 440, "pan", -0.5]) });
SystemClock.sched(142.2, { l.free });

// 56 Victoria Express
SystemClock.sched(19.25, { m = Synth("Bus", ["freq", 293.66, "pan", 0.5]) });
SystemClock.sched(140.75, { m.free });

// 57 Harvard Express
SystemClock.sched(19, { n = Synth("Bus", ["freq", 440, "pan", -0.5]) });
SystemClock.sched(148, { n.free });

// 58 Edinburgh Express
SystemClock.sched(19, { o = Synth("Bus", ["freq", 392, "pan", -0.25]) });
SystemClock.sched(148, { o.free });
)
