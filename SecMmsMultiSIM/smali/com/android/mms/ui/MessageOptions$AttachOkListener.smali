.class Lcom/android/mms/ui/MessageOptions$AttachOkListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachOkListener"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mMsgId:J

.field mSave:Z

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "bSave"
    .parameter "msgId"

    .prologue
    .line 2671
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2672
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mContext:Landroid/content/Context;

    .line 2673
    iput-boolean p3, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    .line 2674
    iput-wide p4, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mMsgId:J

    .line 2675
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v8, 0x0

    .line 2678
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 2680
    .local v4, lv:Landroid/widget/ListView;
    if-nez v4, :cond_1

    .line 2710
    :cond_0
    :goto_0
    return-void

    .line 2687
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/AttachmentListAdapter;

    .line 2688
    .local v3, la:Lcom/android/mms/ui/AttachmentListAdapter;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2690
    .local v5, partsUriList:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 2691
    invoke-virtual {v3, v2, v8, v8}, Lcom/android/mms/ui/AttachmentListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2692
    .local v6, rowItem:Landroid/view/View;
    const v7, 0x7f0e002c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2694
    .local v1, cb:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2695
    invoke-virtual {v4, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 2697
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    iget-boolean v7, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    if-eqz v7, :cond_2

    .line 2698
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2690
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2705
    .end local v1           #cb:Landroid/widget/CheckBox;
    .end local v6           #rowItem:Landroid/view/View;
    :cond_3
    iget-boolean v7, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    if-eqz v7, :cond_0

    .line 2706
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v7, v7, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/samsung/mms/content/MmsPartExport;->saveParts(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0
.end method
