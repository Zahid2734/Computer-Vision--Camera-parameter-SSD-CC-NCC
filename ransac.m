function output = ransac(data)
 
    output=data(1,:);
    b=0;
    count = 1;
    start = inf;
    while(start>count)
        rng(0)
        number = randi(count);
        number = data(number,:);
        [~,val]= least_square(number(:,1)',number(:,2)');
        x=0;
        m = [1,1];
        val = transpose(val);
        for i=1:size(data,1)
            pq = [data(i,1), data(i,2)];
            l1 =  [val(1), val(2)];
            d = abs(l1(1)*pq(1)+pq(2)+l1(2))/sqrt(l1(1)^2+1);
            if(d<120.0)
                x=x+1;
                m=[m;[data(i,1), data(i,2)]];
            end
        end
         start = log(1-0.99)/log(1-(1-(1-(x)/size(data,1)))^count);
         count=count+1;
         if(x>b)
            b=x;
            output=m;
        end
         
    end
end
