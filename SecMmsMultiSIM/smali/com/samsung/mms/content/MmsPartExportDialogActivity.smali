.class public Lcom/samsung/mms/content/MmsPartExportDialogActivity;
.super Landroid/app/Activity;
.source "MmsPartExportDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/content/MmsPartExportDialogActivity$MaximumCharacterLengthFilter;,
        Lcom/samsung/mms/content/MmsPartExportDialogActivity$InvalidFilenameCharacterFilter;,
        Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;
    }
.end annotation


# static fields
.field private static final EXTRA_QUEUE:Ljava/lang/String; = "queued_intents"

.field private static final TAG:Ljava/lang/String; = "Mms/MmsPartExportDialogActivity"


# instance fields
.field private mQueuedIntents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/content/MmsPartExportDialogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->nextIntent()V

    return-void
.end method

.method private nextIntent()V
    .locals 4

    .prologue
    .line 83
    iget-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 89
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->newInstance(Landroid/os/Bundle;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 90
    .local v0, fg:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queueIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v5, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    .line 53
    if-nez p1, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->queueIntent(Landroid/content/Intent;)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->nextIntent()V

    .line 64
    :cond_0
    return-void

    .line 59
    :cond_1
    const-string v5, "queued_intents"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 60
    .local v2, intentsArray:[Landroid/os/Parcelable;
    move-object v0, v2

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 61
    .local v4, p:Landroid/os/Parcelable;
    check-cast v4, Landroid/content/Intent;

    .end local v4           #p:Landroid/os/Parcelable;
    invoke-direct {p0, v4}, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->queueIntent(Landroid/content/Intent;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->queueIntent(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    iget-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->mQueuedIntents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-interface {v1, v2}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 74
    .local v0, intentsArray:[Landroid/content/Intent;
    const-string v1, "queued_intents"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method
