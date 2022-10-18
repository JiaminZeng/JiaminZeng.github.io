
cover = 'f5_cover_q90.jpg';
cover_image = jpeg_read(cover);
stego = 'f5_stego_q90.jpg';
stego_image = jpeg_read(stego);

sum = 0;
tot_diff = 0;

for i = 1:200
    for j =1:320
        if cover_image.coef_arrays{1}(i,j) ~= stego_image.coef_arrays{1}(i,j)
            sum = sum + 1;
            tot_diff = tot_diff + abs(cover_image.coef_arrays{1}(i,j)-stego_image.coef_arrays{1}(i,j));
        end
    end
end

for i = 1:104
    for j =1:160
        if cover_image.coef_arrays{2}(i,j) ~= stego_image.coef_arrays{2}(i,j)
            sum = sum + 1;
            tot_diff = tot_diff + abs(cover_image.coef_arrays{2}(i,j)-stego_image.coef_arrays{2}(i,j));
        end
        if cover_image.coef_arrays{3}(i,j) ~= stego_image.coef_arrays{3}(i,j)
            sum = sum + 1;
            tot_diff = tot_diff + abs(cover_image.coef_arrays{3}(i,j)-stego_image.coef_arrays{3}(i,j));
        end
    end
end


avg = tot_diff/sum;
s = 0;

for i = 1:200
    for j =1:320
        if cover_image.coef_arrays{1}(i,j) ~= stego_image.coef_arrays{1}(i,j)
            sub = cover_image.coef_arrays{1}(i,j)-stego_image.coef_arrays{1}(i,j);
            sub = abs(sub);
            s = s + (sub - avg) * (sub -avg);
        end
    end
end

for i = 1:104
    for j =1:160
        if cover_image.coef_arrays{2}(i,j) ~= stego_image.coef_arrays{2}(i,j)
            sub = cover_image.coef_arrays{2}(i,j)-stego_image.coef_arrays{2}(i,j);
            sub = abs(sub);
            s = s + (sub - avg) * (sub - avg);
        end
        if cover_image.coef_arrays{3}(i,j) ~= stego_image.coef_arrays{3}(i,j)
            sub = cover_image.coef_arrays{3}(i,j)-stego_image.coef_arrays{3}(i,j);
            sub = abs(sub);
            s = s + (sub - avg) * (sub - avg);
        end
    end
end

sum 
avg
s = sqrt(s / sum)