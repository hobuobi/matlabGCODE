function arcGC(startX,startY,endX,endY,a,CW)
    
    % Function works in absolute coordinates.
    % If using in relative coordinates, specify startX and startY as 0.
    
    dX = endX-startX;
    dY = endY-startY;
    axisAngle = abs(atan2(dY,dX));
    b = sqrt((dY.^2)+(dX.^2));
    hyp = sqrt((a*a)+(b/2)*(b/2));

    phi = atan2(-(b/2),-a);

    theta = 2*pi - abs(2*phi);

    r = abs((sin(phi)*hyp)/(sin(theta)));

    dir = (pi/2)-theta;
    if(CW)
        if(dY<0)
            dir = dir - axisAngle;
        else
            dir = dir + axisAngle;
        end
        
        centerX = cos(dir)*r;
        centerY = sin(dir)*r;
        disp(['G02 X',num2str(endX),' Y',num2str(endY),' I',num2str(centerX),' J',num2str(centerY)]);

    else

        if(dY>0)
            dir = dir - axisAngle;
        else
            dir = dir + axisAngle;
        end
        centerX = cos(-dir)*r;
        centerY = sin(-dir)*r;
        disp(['G03 X',num2str(endX),' Y',num2str(endY),' I',num2str(centerX),' J',num2str(centerY)]);
    end
    
end


