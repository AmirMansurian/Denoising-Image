function out = MedFilter (Image)    
    
    [row, col] = size (Image);
    
    out = Image;

    for i=1: 1: row
        for j=1: 1: col

              if Image(i, j) == 0 || Image(i, j) == 255

                 for d=1: 1: 3
                            Kernel = [];
                            t=uint16(1);
                            m=uint16(0);
                            n=uint16(0);
                            for k=i - uint16(((2*d+1)/2)): 1: i + uint16(((2*d+1)/2))
                                for l=j - uint16(((2*d+1)/2)): 1: j + uint16(((2*d+1)/2))

                                    if k < 1
                                        m = 1;
                                    elseif k> row
                                        m = row;
                                    else
                                        m = k; 
                                    end

                                    if l < 1
                                        n = 1;
                                    elseif l > col
                                        n = col;
                                    else
                                        n = l; 
                                    end

                                    Kernel(t) = Image(m, n);
                                    t = t+1;
                                end
                            end


                       if median(Kernel) ~= 255 && median (Kernel) ~= 0
                           out(i, j) = median(Kernel);
                            break;
                       end
                end 

            end
     end
  end
  
  


    for i= 1: row
        for j=1: 1: col
            
            if out(i, j) == 0 || out(i, j) == 255
                
                Kernel3 = [];

                            t=uint16(1);
                            m=uint16(0);
                            n=uint16(0);
                            for k=i - uint16(((19)/2)): 1: i + uint16(((19)/2))
                                for l=j - uint16((19)/2): 1: j + uint16(((19)/2))

                                    if k < 1
                                        m = 1;
                                    elseif k> row
                                        m = row;
                                    else
                                        m = k; 
                                    end

                                    if l < 1
                                        n = 1;
                                    elseif l > col
                                        n = col;
                                    else
                                        n = l; 
                                    end                                   
                                  
                                    Kernel3(t) = out(m, n);
                                    t = t+1;
                                end
                            end
                    out(i, j) = sum(Kernel3)/numel(Kernel3);
                 end

            end
        end
    end
    