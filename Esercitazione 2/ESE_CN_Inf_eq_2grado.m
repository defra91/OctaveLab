figure(1); clf, hold on

for a=1
	for b=1:100:2000   % b positivo !!!!
		for c=0.000001
			if (b^2-4*a*c)>=0
				xn=(-b - sqrt(b^2-4*a*c))/(2*a);
				xp1=(-b + sqrt(b^2-4*a*c))/(2*a);
				xp2=(c/a)/xn;						% calcolo l'errore relativo
				disp(['xn=' num2str(xn) '  xp1=' num2str(xp1) '  xp2=' num2str(xp2) '  (xp2-xp1)/xp2=' num2str((xp2-xp1)/xp2)]);
				plot(b,(xp2-xp1)/xp2,'b*');
			end
		end
	end
end






