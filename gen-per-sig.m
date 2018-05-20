% Generating Periodic Signals

% Square
[s,t]=gensig('square',5,40,0.01)
plot(t,s)
ylim([-.5 2.0])

% Triangle
[s,t]=gensig('pulse',5,20)
plot(t,s)
ylim([-.5 2.0])
