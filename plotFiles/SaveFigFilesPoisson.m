% Save figures or output images for solved Poisson's ratio
%%
%%
% Find img name
[~,imgname,imgext] = fileparts(file_name{1,ImgSeqNum});

%%
if DICpara.MethodToSaveFig == 1
    %% jpg

    fig1_name = fullfile(folderPath, [imgname, '_WS', num2str(DICpara.winsize), '_ST', num2str(DICpara.winstepsize), '_Poisson_ratio_field']);
    figure(1); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis([-0.025, 0.025]); end
    print(figure(1), fig1_name, '-djpeg', '-r300');

    fig2_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_Poisson_ratio_histogram']);
    figure(2);
    print(figure(2), fig2_name, '-djpeg', '-r300');

    fig3_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_strain_eyy_histogram']);
    figure(3);
    print(figure(3), fig3_name, '-djpeg', '-r300');

    fig4_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_strain_exx_histogram']);
    figure(4);
    print(figure(4), fig4_name, '-djpeg', '-r300');

elseif DICpara.MethodToSaveFig == 2
    %% pdf

    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_Poisson_ratio_field'];
    fullFilename = fullfile(folderPath, filename);
    figure(1); if DICpara.OrigDICImgTransparency == 0, colormap coolwarm(32); caxis([-0.025,0.025]); end
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);
    
    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_Poisson_ratio_histogram'];
    fullFilename = fullfile(folderPath, filename);
    figure(2);
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);

    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_strain_eyy_histogram'];
    fullFilename = fullfile(folderPath, filename);
    figure(3);
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);

    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_strain_exx_histogram'];
    fullFilename = fullfile(folderPath, filename);
    figure(4);
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);
   
else
    %% fig
    fprintf('Please modify codes manually in Section 8.');
    figure(1); colormap(coolwarm(128)); caxis([-0.05,0.1]); 
        savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_Poisson_ratio_field']);
    figure(2); colormap(coolwarm(128)); caxis([-0.05,0.05]); 
        savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_Poisson_ratio_histogram']);
    figure(3); colormap(coolwarm(128)); caxis([-0.05,0.05]); 
        savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_strain_eyy_histogram']);
    figure(4); colormap(coolwarm(128)); caxis([-0.05,0.05]); 
        savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_strain_exx_histogram']); 
    
end