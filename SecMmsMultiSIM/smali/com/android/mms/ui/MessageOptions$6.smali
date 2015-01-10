.class Lcom/android/mms/ui/MessageOptions$6;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 2622
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$6;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2626
    const/16 v5, 0x52

    if-eq p2, v5, :cond_0

    const/16 v5, 0x54

    if-ne p2, v5, :cond_1

    .line 2651
    .end local p1
    :cond_0
    :goto_0
    return v4

    .line 2629
    .restart local p1
    :cond_1
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 2631
    .local v1, listView:Landroid/widget/ListView;
    if-eqz v1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x42

    if-eq v5, v6, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_4

    .line 2635
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2636
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 2638
    .local v2, selectView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2639
    const v5, 0x7f0e002c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2641
    .local v0, ch:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 2643
    invoke-virtual {v0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 2645
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .end local v0           #ch:Landroid/widget/CheckBox;
    .end local v2           #selectView:Landroid/view/View;
    :cond_4
    move v4, v3

    .line 2651
    goto :goto_0
.end method
