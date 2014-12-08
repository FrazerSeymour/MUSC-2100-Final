s.boot;
s.quit;

(
// Bus SynthDef
SynthDef("Bus", { arg freq = 440, pan = 0;
	Out.ar(0, Pan2.ar(SinOsc.ar(freq), pan));
}).send(s);

// 1A College/Edinburgh

a = Synth("Bus", ["freq", 440, "pan", 0.25]);
SystemClock.sched(5, { a.free });

// 1B College/Edinburgh
b = Synth("Bus", ["freq", 440, "pan", -0.5]);
SystemClock.sched(5, { b.free });

// 2A West Loop
c = Synth("Bus", ["freq", 659.25, "pan", -1]);
SystemClock.sched(5, { c.free });

// 2B West Loop
d = Synth("Bus", ["freq", 880, "pan", -0.75]);
SystemClock.sched(5, { d.free });

// 3A West Loop
e = Synth("Bus", ["freq", 880, "pan", 0]);
SystemClock.sched(5, { e.free });

// 3B West Loop
f = Synth("Bus", ["freq", 659.25, "pan", 1]);
SystemClock.sched(5, { f.free });

// 5 Gordon
g = Synth("Bus", ["freq", 293.66, "pan", 0.5]);
SystemClock.sched(5, { g.free });

// 6 Harvard/Ironwood
h = Synth("Bus", ["freq", 392, "pan", -0.5]);
SystemClock.sched(5, { h.free });

// 7 Kortwright/Downey
i = Synth("Bus", ["freq", 392, "pan", -0.75]);
SystemClock.sched(5, { i.free });

// 15 University/College
j = Synth("Bus", ["freq", 440, "pan", -0.75]);
SystemClock.sched(5, { j.free });

// 16 Southgate
k = Synth("Bus", ["freq", 293.66, "pan", -0.5]);
SystemClock.sched(5, { k.free });

// 50 Stone Road Express
l = Synth("Bus", ["freq", 440, "pan", -0.5]);
SystemClock.sched(5, { l.free });

// 56 Victoria Express
m = Synth("Bus", ["freq", 293.66, "pan", 0.5]);
SystemClock.sched(5, { m.free });

// 57 Harvard Express
n = Synth("Bus", ["freq", 440, "pan", -0.5]);
SystemClock.sched(5, { n.free });

// 58 Edinburgh Express
o = Synth("Bus", ["freq", 392, "pan", -0.25]);
SystemClock.sched(5, { o.free });
)
