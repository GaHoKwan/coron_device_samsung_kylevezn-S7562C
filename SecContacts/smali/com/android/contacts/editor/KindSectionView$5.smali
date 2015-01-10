.class Lcom/android/contacts/editor/KindSectionView$5;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView;->addItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;

.field final synthetic val$newField:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$5;->this$0:Lcom/android/contacts/editor/KindSectionView;

    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView$5;->val$newField:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 568
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView$5;->val$newField:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 570
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView$5;->val$newField:Landroid/view/View;

    const v3, 0x7f090148

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 571
    .local v0, fields:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView$5;->this$0:Lcom/android/contacts/editor/KindSectionView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/KindSectionView;->access$400(Lcom/android/contacts/editor/KindSectionView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 573
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 574
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 575
    const-string v2, "KindSectionView"

    const-string v3, "Failed to show soft input method."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    return-void
.end method
