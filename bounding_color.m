function [] = bounding_color()

global stats;

 for object = 1:length(stats)
          bb = stats(object).BoundingBox;
          bc = stats(object).Centroid;
          rectangle('Position',bb,'EdgeColor','g','LineWidth',2)
          plot(bc(1),bc(2), '-m+')
          a=text(bc(1)+15,bc(2), strcat('X: ', num2str(round(bc(1))), '    Y: ', num2str(round(bc(2)))));
          set(a, 'FontName', 'Arial', 'FontWeight', 'bold', 'FontSize', 12, 'Color', 'green');

 end
      
end

