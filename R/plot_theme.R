theme_pb <- function(base_size=14,xlab_angle=0) {
  ## xlab_angle: 0, 45, or 90
  library(grid)
  library(ggthemes)
  (theme_foundation(base_size=base_size)
    + theme(plot.title = element_text(face = "bold",
                                      size = rel(1.2), hjust = 0.5),
            text = element_text(),
            panel.background = element_rect(colour = NA),
            plot.background = element_rect(colour = NA),
            panel.border = element_rect(colour = NA),
            axis.title = element_text(face = "bold",size = rel(1)),
            axis.title.y = element_text(angle=90,vjust =2),
            axis.title.x = element_text(vjust = -0.2),
            #axis.text = element_text(), 
            axis.line = element_line(colour="black"),
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
            legend.key = element_rect(colour = NA),
            legend.position = "right",
            legend.title.align = 0
    ) +
  if(xlab_angle==45){
    theme(axis.text.x = element_text(angle = 45,hjust = 1,vjust = 1))
  }else if(xlab_angle==90){
    theme(axis.text.x = element_text(angle = 90,hjust = 1,vjust = 0.5))
  })
}

