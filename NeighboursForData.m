function result=NeighboursForData(i)
    global eps;
	global distanceBetweenTwoData;

	result = find(distanceBetweenTwoData(i, :) <= eps);
end