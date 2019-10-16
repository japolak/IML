function arcfs = blockAR(x,order,numbuffer)
    numwindows = round(numel(x)/numbuffer);
    y = buffer(x,numbuffer);
    arcfs = zeros(order,size(y,2));
    for kk = 1:size(y,2)
        artmp =  arburg(y(:,kk),order);
        arcfs(:,kk) = artmp(2:end);
    end
    arcfs = reshape(arcfs,order*numwindows,1);
    arcfs = arcfs';
end