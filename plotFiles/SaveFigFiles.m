% Save figures or output images
%%
% Find img name
[~,imgname,imgext] = fileparts(file_name{1,ImgSeqNum});

%%
if DICpara.MethodToSaveFig == 1
    %% jpg

    fig3_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_DispU']);
    figure(3); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis auto; end
    print(figure(3), fig3_name, '-djpeg', '-r300');

    fig4_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_DispV']);
    figure(4); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis auto; end
    print(figure(4), fig4_name, '-djpeg', '-r300');

    fig5_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_exx']);
    figure(5); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis([-0.025,0.025]); end
    print(figure(5), fig5_name, '-djpeg', '-r300');
    
    fig6_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_exy']);
    figure(6); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis([-0.025,0.025]); end
    print(figure(6), fig6_name, '-djpeg', '-r300');
    
    fig7_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_eyy']);
    figure(7); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis([-0.015,0.015]); end
    print(figure(7), fig7_name, '-djpeg', '-r300');
    
    fig8_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_principalstrain_max']);
    figure(8); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis([0,0.025]); end
    print(figure(8), fig8_name, '-djpeg', '-r300');
    
    fig9_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_principalstrain_min']);
    figure(9); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis([-0.025,0]); end
    print(figure(9), fig9_name, '-djpeg', '-r300');
    
    fig10_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_maxshear']);
    figure(10); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis([0,0.07]); end
    print(figure(10), fig10_name, '-djpeg', '-r300');

    fig11_name = fullfile(folderPath, [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_vonMises_strain']);
    figure(11); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis([0,0.07]); end
    print(figure(11), fig11_name, '-djpeg', '-r300');
    
    
    
elseif DICpara.MethodToSaveFig == 2
    %% pdf
    
    filename = [imgname,'_WS',num2str(DICpara.winsize), '_ST', num2str(DICpara.winstepsize), ' DispU'];
    fullFilename = fullfile(folderPath, filename);
    figure(3); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis auto; end
    export_fig(gcf, 'pdf', '-r300', '-painters', fullFilename);    

    
    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_DispV'];
    fullFilename = fullfile(folderPath, filename);
    figure(4); if DICpara.OrigDICImgTransparency == 0, colormap jet; caxis auto; end
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);
    
    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_exx'];
    fullFilename = fullfile(folderPath, filename);
    figure(5); if DICpara.OrigDICImgTransparency == 0, colormap coolwarm(32); caxis([-0.025,0.025]); end
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);
    
    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_exy'];
    fullFilename = fullfile(folderPath, filename);
    figure(6); if DICpara.OrigDICImgTransparency == 0, colormap coolwarm(32); caxis([-0.025,0.025]); end
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);
    
    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_eyy'];
    fullFilename = fullfile(folderPath, filename);
    figure(7); if DICpara.OrigDICImgTransparency == 0, colormap coolwarm(32); caxis([-0.015,0.015]); end
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);
    
    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_principalstrain_max'];
    fullFilename = fullfile(folderPath, filename);
    figure(8); if DICpara.OrigDICImgTransparency == 0, colormap coolwarm(32); caxis([0,0.025]); end
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);
    
    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_principalstrain_min'];
    fullFilename = fullfile(folderPath, filename);
    figure(9); if DICpara.OrigDICImgTransparency == 0, colormap coolwarm(32); caxis([-0.025,0]); end
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);
    
    filename = [imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_maxshear'];
    fullFilename = fullfile(folderPath, filename);
    figure(10); if DICpara.OrigDICImgTransparency == 0, colormap coolwarm(32); caxis([0,0.07]); end
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename);
    
    filename =[imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_vonMises_strain'];
    fullFilename = fullfile(folderPath, filename);
    figure(11); if DICpara.OrigDICImgTransparency == 0, colormap coolwarm(32); caxis([0,0.07]); end
    export_fig( gcf , '-pdf' , '-r300' , '-painters' , fullFilename); 
    
else
    %% fig
    fprintf('Please modify codes manually in Section 8.');
    figure(3); colormap(coolwarm(128)); caxis auto; savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_DispU.fig']);
    figure(4); colormap(coolwarm(128)); caxis auto; savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_DispV.fig']);
    figure(5); colormap(coolwarm(128)); caxis([-0.05,0.1]); savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_exx.fig']);
    figure(6); colormap(coolwarm(128)); caxis([-0.05,0.05]); savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_exy.fig']);
    figure(7); colormap(coolwarm(128)); caxis([-0.1,0.05]); savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_eyy.fig']);
    figure(8); colormap(coolwarm(128)); caxis([0,0.025]); savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_principalstrain_max.fig']);
    figure(9); colormap(coolwarm(128)); caxis([-0.025,0]); savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_principalstrain_min.fig']);
    figure(10); colormap(coolwarm(128)); caxis([0,0.07]); savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_maxshear.fig']);
    figure(11); colormap(coolwarm(128)); caxis([0,0.07]); savefig([imgname,'_WS',num2str(DICpara.winsize),'_ST',num2str(DICpara.winstepsize),'_vonMises_strain.fig']);
    
    
end





