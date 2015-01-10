.class Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposerAttachmentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/AttachmentModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResource:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10380
    .local p4, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 10381
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 10382
    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->mResource:I

    .line 10383
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 10384
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 10390
    if-nez p2, :cond_0

    .line 10391
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->mResource:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 10394
    :cond_0
    const v8, 0x7f0e00c3

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 10395
    .local v1, attachmentName:Landroid/widget/TextView;
    const v8, 0x7f0e00c4

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 10396
    .local v3, removeImage:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 10397
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    move v4, p1

    .line 10399
    .local v4, selectPosition:I
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 10401
    .local v2, fileName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 10402
    .local v6, tempName:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 10404
    .local v5, tempCompareFileName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/x-vCard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 10405
    const-string v8, ".vcf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 10406
    const-string v8, ".vcf"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10407
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10409
    :cond_1
    const v7, 0x7f0200fe

    .line 10436
    .local v7, typeImage:I
    :goto_0
    invoke-virtual {v1, v7, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 10437
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10438
    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 10439
    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 10441
    new-instance v8, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;

    invoke-direct {v8, p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;Lcom/android/mms/model/AttachmentModel;I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10452
    new-instance v8, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$2;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$2;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 10473
    return-object p2

    .line 10410
    .end local v7           #typeImage:I
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/x-vCalendar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 10411
    const-string v8, ".vcs"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 10412
    const-string v8, ".vcs"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10413
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10415
    :cond_3
    const v7, 0x7f0200fd

    .restart local v7       #typeImage:I
    goto :goto_0

    .line 10418
    .end local v7           #typeImage:I
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/x-vNote"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 10419
    const-string v8, ".vnt"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 10420
    const-string v8, ".vnt"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10421
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10423
    :cond_5
    const v7, 0x7f020107

    .restart local v7       #typeImage:I
    goto :goto_0

    .line 10424
    .end local v7           #typeImage:I
    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/x-vtodo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 10425
    const-string v8, ".vts"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 10426
    const-string v8, ".vts"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10427
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10429
    :cond_7
    const v7, 0x7f020106

    .restart local v7       #typeImage:I
    goto :goto_0

    .line 10433
    .end local v7           #typeImage:I
    :cond_8
    const v7, 0x7f0200fc

    .restart local v7       #typeImage:I
    goto/16 :goto_0
.end method
