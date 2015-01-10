.class Lcom/android/mms/ui/MmsSinglePageActivity$4;
.super Landroid/os/Handler;
.source "MmsSinglePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const v11, 0x7f0a01a4

    .line 668
    const/4 v2, 0x0

    .line 669
    .local v2, contentType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

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

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$200(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/lang/String;)V

    .line 672
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 674
    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v5

    .line 675
    .local v5, iModel:Lcom/android/mms/model/MediaModel;
    if-eqz v5, :cond_0

    .line 677
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    invoke-static {v8, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$300(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v2

    .line 678
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v9

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v8, v9, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$400(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 679
    .local v4, iIntent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.showActionIcons"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 680
    const-string v8, "single_mode"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v8, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v3

    .line 684
    .local v3, e:Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 689
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #iIntent:Landroid/content/Intent;
    .end local v5           #iModel:Lcom/android/mms/model/MediaModel;
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v7

    .line 690
    .local v7, vModel:Lcom/android/mms/model/MediaModel;
    if-eqz v7, :cond_0

    .line 692
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    invoke-static {v8, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$300(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v2

    .line 693
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v9

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v8, v9, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$400(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 695
    .local v6, vIntent:Landroid/content/Intent;
    :try_start_1
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v8, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 696
    :catch_1
    move-exception v3

    .line 697
    .restart local v3       #e:Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 702
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    .end local v6           #vIntent:Landroid/content/Intent;
    .end local v7           #vModel:Lcom/android/mms/model/MediaModel;
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    .line 703
    .local v1, aModel:Lcom/android/mms/model/MediaModel;
    if-eqz v1, :cond_0

    .line 705
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    invoke-static {v8, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$300(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v2

    .line 706
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v9

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v8, v9, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$400(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 708
    .local v0, aIntent:Landroid/content/Intent;
    :try_start_2
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v8, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 709
    :catch_2
    move-exception v3

    .line 710
    .restart local v3       #e:Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity$4;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
