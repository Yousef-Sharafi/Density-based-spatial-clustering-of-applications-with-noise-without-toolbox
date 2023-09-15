function DbscanAlgorithm()
global minPoints;
global data;
global distanceBetweenTwoData;
global classIndex;
global visitedData;
global indexOfClassForData;

classIndex = 0;
n = size(data, 1);
visitedData = zeros(n, 1);
indexOfClassForData = zeros(n, 1);
distanceBetweenTwoData = pdist2(data,data);
for i = 1:n
    if (visitedData(i) == 0)
        visitedData(i) = 1;
        if(numel(NeighboursForData(i))>=minPoints)
            classIndex = classIndex + 1;
            indexOfClassForData(i) = classIndex;
            indexOfNeighbours=NeighboursForData(i);
            if(numel(indexOfNeighbours)>0)
                checkForNeighbours(indexOfNeighbours);
            end         
        end
    end
end
end