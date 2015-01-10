.class Lcom/samsung/mms/ui/SavedMsgsList$10;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/SavedMsgsList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/SavedMsgsList;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$10;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 565
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$10;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$10;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1100(Lcom/samsung/mms/ui/SavedMsgsList;)I

    move-result v2

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->constructFileName(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1200(Lcom/samsung/mms/ui/SavedMsgsList;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, deletedFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$10;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1300(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$10;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mItemSelectedIndex:I
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1100(Lcom/samsung/mms/ui/SavedMsgsList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 568
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$10;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->filesAdapter:Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1400(Lcom/samsung/mms/ui/SavedMsgsList;)Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 569
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$10;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->updateEmptyView()V
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1500(Lcom/samsung/mms/ui/SavedMsgsList;)V

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$10;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a04f0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
