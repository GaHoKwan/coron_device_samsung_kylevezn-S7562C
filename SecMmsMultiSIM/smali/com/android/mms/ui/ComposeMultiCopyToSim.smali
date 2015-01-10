.class public Lcom/android/mms/ui/ComposeMultiCopyToSim;
.super Ljava/lang/Object;
.source "ComposeMultiCopyToSim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/CopyMessageToCard"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field protected mCopyConfirmDialog:Landroid/content/DialogInterface;

.field protected mCopytoSimProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .parameter "composer"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 92
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopyConfirmDialog:Landroid/content/DialogInterface;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMultiCopyToSim;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->copyToSimSelectedSMS(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method private copyToSimSelectedSMS(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, msgTimeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, msgBodyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, msgAddressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, msgTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x3

    .line 207
    const/4 v9, 0x0

    .line 208
    .local v9, success:I
    const/4 v6, 0x0

    .line 211
    .local v6, fail:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions;->MultipleCopyMessageToSIM(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 214
    .local v8, result:I
    if-ne v8, v10, :cond_0

    move v0, v10

    .line 226
    .end local v8           #result:I
    :goto_1
    return v0

    .line 216
    .restart local v8       #result:I
    :cond_0
    if-nez v8, :cond_1

    .line 217
    add-int/lit8 v9, v9, 0x1

    .line 211
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 219
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 223
    .end local v8           #result:I
    :cond_2
    if-lez v9, :cond_3

    .line 224
    const/4 v0, 0x0

    goto :goto_1

    .line 226
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public confirmCopytoSIMMessageDialog(Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;ZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "copyAll"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x0

    .line 113
    const v4, 0x7f030029

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0e00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 115
    .local v2, checkbox:Landroid/widget/CheckBox;
    const v4, 0x7f0e00e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    const v4, 0x7f0a045a

    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    const v4, 0x7f0a045b

    goto :goto_0
.end method

.method public copySelectedMessages()V
    .locals 6

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopyConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopyConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 103
    .local v0, dlg:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;-><init>(Lcom/android/mms/ui/ComposeMultiCopyToSim;Landroid/net/Uri;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    const v1, 0x7f0a045c

    :goto_0
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->confirmCopytoSIMMessageDialog(Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;ZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 107
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopyConfirmDialog:Landroid/content/DialogInterface;

    .line 108
    const-string v1, "Mms/CopyMessageToCard"

    const-string v2, "copySelectedMessages()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 103
    :cond_1
    const v1, 0x7f0a045d

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    .line 97
    return-void
.end method
