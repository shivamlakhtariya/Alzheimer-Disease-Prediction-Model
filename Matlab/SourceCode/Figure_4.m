x = 40 : 90 ;

% e3/e4 Men
E1=1.92;
F1=0.00103;
G1=0;
H1=0;
k11=51;
k12=0;


P1 = exp(-F1 .* ((x-k11).^2) - G1.*(x-k12));
fi1= E1 .* P1 + H1;


%e3/e4 Women
E2=3.68;
F2=0.00319;
G2=0;
H2=1;
k21=60;
k22=0;


P2 = exp(-F2 .* ((x-k21).^2) - G2.*(x-k22));
fi2= E2 .* P2 + H2;


%e4\e4 Men
E3=8.2;
F3=0.00506;
G3=0;
H3=3;
k31=58;
k32=0;

P3 = exp(-F3 .* ((x-k31).^2) - G3.*(x-k32));
fi3 = E3 .* P3 + H3;



%e4\e4 female
E4=9;
F4=0.00504;
G4=0;
H4=3;
k41=60;
k42=0;

P4 = exp(-F4 .* ((x-k41).^2) - G4.*(x-k42));
fi4= E4 .* P4 + H4;



plot(x,fi1,x,fi2,x,fi3,x,fi4);
legend('e3/e4 Men','e3/e4 Women','e4/e4 Men','e4/e4 female');
title(' Modelled risk of AD, relative to the e3/e3 genotype, for e3/e4 and e4/e4 genotypes,Based on odds ratios');
xlabel('Age(Year)');
ylabel('Odd ratio');
