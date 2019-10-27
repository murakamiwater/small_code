
      program energy_calclation
              implicit none
              real Isph, Ipro(3), Iob(4)
              real v0, Vsph, Vpro(3),Vob(4)
              real Nsph, Nob, Npro
              real musph, mupro, muob
              real rH,a,ad,RC,RCpro,RCob
              real c1
              integer i

              rH=1.0    !parametere from cylidrical coordinate
              v0=0.35   !parametere from spherical config.
              c1=1.0472 !pi over 3
              RCpro=1.8 !parametere from cylidrical coordinate
              RCob=2.5  !parametere from cyl. coordinate(not platical)

              do i=1,10000
             RC=rH+i*0.01       !sphere
             ad=i*0.01          !obrate
             a=i*0.01           !prorate
             
             !sphere
             Vsph=c1*((RC**4-rH**4)/(RC-rH))
             Isph=0.2*c1*(RC**3-rH**3+RC*(RC**2-rH**2))
             Nsph=Vsph/v0
             musph=Isph/Nsph
                                                                        
             !Prorate
             Vpro(1)=c1*((RCpro**4-rH**4)/(RCpro-rH))
             Vpro(2)=c1*a*((RCpro**3-rH**3)/(RCpro-rH))
             Vpro(3)=Vpro(1)+Vpro(2)
             Ipro(1)=0.2*c1*(RCpro**3-rH**3+RCpro*(RCpro**2-rH**2))
             Ipro(2)=0.1*c1*a*(3*(RCpro**2)-2*(rH**2)-RCpro*rH)
             Ipro(3)=Ipro(1)+Ipro(2)
             Npro=Vpro(3)/v0
             mupro=Ipro(3)/Npro

             !Obrate
             Vob(1)=c1*((RCob**4-rH**4)/(RCob-rH))
             Vob(2)=3*c1*c1*ad*((RCob**3-rH**3)/(RCob-rH))
             Vob(3)=ad*ad*c1*((RCob**2-rH**2)/(RCob-rH))
             Vob(4)=Vob(1)+Vob(2)+Vob(3)
             Iob(1)=0.2*c1*(RCob**3-rH**3+RCob*(RCob**2-rH**2))
             Iob(2)=0.3*c1*c1*ad*(3*(RCob**2)-2*(rH**2)-RCob*rH)
             Iob(3)=0.5*c1*ad*ad*(RCob-rH)
             Iob(4)=Iob(1)+Iob(2)+Iob(3)
             Nob=Vob(4)/v0
             muob=Iob(4)/Nob

             !Results
            write(6,*)Nsph,Isph,Npro,Ipro(3),Nob,Iob(4),musph,mupro,muob
              enddo

        end program


