.class Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowAttachmentListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/AllowAttachmentListener"


# instance fields
.field private mAppend:Z

.field private mDataUri:Landroid/net/Uri;

.field private mMediaType:Ljava/lang/String;

.field private mReqCode:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 0
    .parameter
    .parameter "mediaType"
    .parameter "dataUri"
    .parameter "reqCode"
    .parameter "append"

    .prologue
    .line 8342
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8343
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    .line 8344
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    .line 8345
    iput p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mReqCode:I

    .line 8346
    iput-boolean p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    .line 8347
    return-void
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8298
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 8298
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 8310
    const-string v0, "Mms/AllowAttachmentListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(),which="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8312
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 8313
    .local v2, location:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0a00e9

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8316
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a01d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v10

    .line 8318
    .local v10, progressDialog:Landroid/app/ProgressDialog;
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 8320
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;

    invoke-direct {v1, p0, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;ILandroid/app/ProgressDialog;)V

    const-string v3, "AllowAttachmentListener"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8340
    .end local v10           #progressDialog:Landroid/app/ProgressDialog;
    :cond_0
    :goto_0
    return-void

    .line 8333
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0a00ea

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8334
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    move v4, v3

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addVideo(Landroid/net/Uri;IZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8000(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V

    goto :goto_0

    .line 8335
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0a00e8

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8336
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    move v4, v3

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addAudio(Landroid/net/Uri;IZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8100(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V

    goto :goto_0

    .line 8337
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0a0173

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8338
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    iget v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mReqCode:I

    move v7, v3

    move v8, v3

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V
    invoke-static/range {v4 .. v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6900(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZZZI)V

    goto :goto_0
.end method
