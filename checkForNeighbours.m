function checkForNeighbours(indexOfNeighbours)
global classIndex;
global visitedData;
global indexOfClassForData;
global minPoints;

j = 1;
indexData = indexOfNeighbours(j);
flag = true;
while (flag==true)
    if (visitedData(indexData) == 0)
        visitedData(indexData) = 1;
        if (numel(NeighboursForData(indexData)) >= minPoints)
            indexOfNeighbours = [indexOfNeighbours NeighboursForData(indexData)];
        end
        if(indexOfClassForData(indexData)==0)
            indexOfClassForData(indexData)=classIndex;
        end
    end
    j = j + 1;
    if (j > numel(indexOfNeighbours))
        flag = false;
    else
        indexData = indexOfNeighbours(j);
    end
end
end