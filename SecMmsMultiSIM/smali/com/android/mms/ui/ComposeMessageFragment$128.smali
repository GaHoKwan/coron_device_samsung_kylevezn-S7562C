.class Lcom/android/mms/ui/ComposeMessageFragment$128;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I
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
    .line 13555
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$128;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 13557
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$128;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    check-cast p1, Lcom/android/mms/ui/ToButton;

    .end local p1
    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V
    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12800(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;)V

    .line 13558
    const/4 v0, 0x1

    return v0
.end method
