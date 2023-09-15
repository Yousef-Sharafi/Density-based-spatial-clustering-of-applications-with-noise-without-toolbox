function showPlot()
global data;
global indexOfClassForData;
global eps;
global minPoints;


subplot(1, 2, 1), plot(data(:, 1), data(:, 2), 'x', 'Color', 'b');
listOfClusters = sort(unique(indexOfClassForData));
numberOfCluster = numel(listOfClusters);
LegendForPLot = {};
Colors = hsv(numberOfCluster);

for i = 1:numberOfCluster
    index = listOfClusters(i);
    currentIndexCluster = find(indexOfClassForData == index);
    if (index == 0)
        subplot(1, 2, 2), plot(data(currentIndexCluster, 1), data(currentIndexCluster, 2), 'o', 'Color', Colors(i, :));
        LegendForPLot{1} = 'Noise Data';
    else
        hold on;
        subplot(1, 2, 2), plot(data(currentIndexCluster, 1), data(currentIndexCluster, 2), 'x', 'Color', Colors(i, :));
        if(listOfClusters(1)~=0)
            LegendForPLot{i} = ['Cluster #' num2str(i)];
        else
            LegendForPLot{i} = ['Cluster #' num2str(i-1)];
        end
    end
end

legend(LegendForPLot);
title(['DBSCAN Algorithm (eps = ' num2str(eps) ', minPoints = ' num2str(minPoints) ')']);
end