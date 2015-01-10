.class Lcom/android/mms/ui/SimMessageListAdapter$3;
.super Ljava/lang/Object;
.source "SimMessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SimMessageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SimMessageListAdapter;

.field final synthetic val$mCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SimMessageListAdapter;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/mms/ui/SimMessageListAdapter$3;->this$0:Lcom/android/mms/ui/SimMessageListAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/SimMessageListAdapter$3;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/mms/ui/SimMessageListAdapter$3;->this$0:Lcom/android/mms/ui/SimMessageListAdapter;

    #getter for: Lcom/android/mms/ui/SimMessageListAdapter;->mMode:I
    invoke-static {v1}, Lcom/android/mms/ui/SimMessageListAdapter;->access$100(Lcom/android/mms/ui/SimMessageListAdapter;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/mms/ui/SimMessageListAdapter$3;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 260
    .local v0, checked:Z
    iget-object v2, p0, Lcom/android/mms/ui/SimMessageListAdapter$3;->val$mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 262
    .end local v0           #checked:Z
    :cond_0
    return-void

    .line 260
    .restart local v0       #checked:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
