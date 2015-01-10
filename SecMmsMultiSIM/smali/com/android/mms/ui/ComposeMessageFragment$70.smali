.class Lcom/android/mms/ui/ComposeMessageFragment$70;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showAddtextDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 7586
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$70;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 7588
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$70;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$70;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextGridAdapter:Lcom/android/mms/ui/AddTextGridAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/AddTextGridAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/AddTextGridAdapter;->buttonToCommand(I)I

    move-result v1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addtextAppinfo(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6400(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    .line 7589
    const/4 v0, 0x1

    return v0
.end method
