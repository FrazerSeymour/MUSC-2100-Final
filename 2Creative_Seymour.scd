s.boot;

// 1A College/Edinburgh
{Pan2.ar(SinOsc.ar(440), 0.25)}.play;

(
// 1B College/Edinburgh
x = {Pan2.ar(SinOsc.ar(440), -0.5)}.play;
SystemClock.sched(5, { x.free });
)

// 2A West Loop
{Pan2.ar(SinOsc.ar(659.25), -1)}.play;

// 2B West Loop
{Pan2.ar(SinOsc.ar(880), -0.75)}.play;

// 3A West Loop
{Pan2.ar(SinOsc.ar(880), 0)}.play;

// 3B West Loop
{Pan2.ar(SinOsc.ar(659.25), 1)}.play;

// 5 Gordon
{Pan2.ar(SinOsc.ar(293.66), 0.5)}.play;

// 6 Harvard/Ironwood
{Pan2.ar(SinOsc.ar(392), -0.5)}.play;

// 7 Kortwright/Downey
{Pan2.ar(SinOsc.ar(392), -0.75)}.play;

// 15 University/College
{Pan2.ar(SinOsc.ar(440), -0.75)}.play;

// 16 Southgate
{Pan2.ar(SinOsc.ar(293.66), -0.5)}.play;

// 50 Stone Road Express
{Pan2.ar(SinOsc.ar(440), -0.5)}.play;

// 56 Victoria Express
{Pan2.ar(SinOsc.ar(293.66), 0.5)}.play;

// 57 Harvard Express
{Pan2.ar(SinOsc.ar(440), -0.5)}.play;

// 58 Edinburgh Express
{Pan2.ar(SinOsc.ar(392), -0.25)}.play;


s.quit;
