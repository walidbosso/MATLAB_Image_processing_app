function dilated_image = dilation(image, se)
    [rows, cols] = size(image);
    [se_rows, se_cols] = size(se);
    se_row_center = ceil(se_rows/2);
    se_col_center = ceil(se_cols/2);
    dilated_image = zeros(rows, cols);

    for i = 1:rows
        for j = 1:cols
            % Check if the current pixel is part of the image
            if image(i, j) == 1
                % Get the coordinates of the neighborhood
                row_start = i - se_row_center + 1;
                row_end = i + se_row_center - 1;
                col_start = j - se_col_center + 1;
                col_end = j + se_col_center - 1;
                % Check if the neighborhood is inside the image
                if (row_start > 0) && (row_end <= rows) && (col_start > 0) && (col_end <= cols)
                    neighborhood = image(row_start:row_end, col_start:col_end);
                    % Check if any pixels in the neighborhood match the structuring element
                    if any(neighborhood(se == 1))
                        dilated_image(i, j) = 1;
                    end
                end
            end
        end
    end
end
