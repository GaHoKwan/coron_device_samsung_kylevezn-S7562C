.class Lcom/android/mms/ui/MmsSinglePageFrame$3;
.super Landroid/os/Handler;
.source "MmsSinglePageFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const v11, 0x7f0a01a4

    .line 631
    const/4 v2, 0x0

    .line 632
    .local v2, contentType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$200(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)V

    .line 635
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 637
    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v5

    .line 638
    .local v5, iModel:Lcom/android/mms/model/MediaModel;
    if-eqz v5, :cond_0

    .line 640
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    invoke-static {v8, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$300(Lcom/android/mms/ui/MmsSinglePageFrame;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v2

    .line 641
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v9

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v8, v9, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$400(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 642
    .local v4, iIntent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.showActionIcons"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 643
    const-string v8, "single_mode"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v8, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$500(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v3

    .line 647
    .local v3, e:Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v8, v9}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$500(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/Intent;)V

    goto :goto_0

    .line 652
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #iIntent:Landroid/content/Intent;
    .end local v5           #iModel:Lcom/android/mms/model/MediaModel;
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v7

    .line 653
    .local v7, vModel:Lcom/android/mms/model/MediaModel;
    if-eqz v7, :cond_0

    .line 655
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    invoke-static {v8, v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$300(Lcom/android/mms/ui/MmsSinglePageFrame;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v2

    .line 656
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v9

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v8, v9, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$400(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 658
    .local v6, vIntent:Landroid/content/Intent;
    :try_start_1
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v8, v6}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$500(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 659
    :catch_1
    move-exception v3

    .line 660
    .restart local v3       #e:Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v8, v9}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$500(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/Intent;)V

    goto :goto_0

    .line 665
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    .end local v6           #vIntent:Landroid/content/Intent;
    .end local v7           #vModel:Lcom/android/mms/model/MediaModel;
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    .line 666
    .local v1, aModel:Lcom/android/mms/model/MediaModel;
    if-eqz v1, :cond_0

    .line 668
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    invoke-static {v8, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$300(Lcom/android/mms/ui/MmsSinglePageFrame;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v2

    .line 669
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v9

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v8, v9, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$400(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 671
    .local v0, aIntent:Landroid/content/Intent;
    :try_start_2
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v8, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$500(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 672
    :catch_2
    move-exception v3

    .line 673
    .restart local v3       #e:Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame$3;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v8, v9}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$500(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
