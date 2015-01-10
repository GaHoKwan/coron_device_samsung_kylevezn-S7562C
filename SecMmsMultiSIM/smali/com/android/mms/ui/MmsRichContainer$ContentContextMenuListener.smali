.class Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentContextMenuListener"
.end annotation


# instance fields
.field private mSlideIndex:I

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "index"

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput p2, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mType:I

    .line 782
    iput p3, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mSlideIndex:I

    .line 783
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 786
    const v1, 0x7f0a0028

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 787
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mSlideIndex:I

    iget v3, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    .line 791
    .local v0, l:Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;
    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 792
    :cond_0
    const v1, 0x7f0a003c

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 798
    :goto_0
    const/16 v1, 0x15

    const v2, 0x7f0a003d

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 801
    const/16 v1, 0x16

    const v2, 0x7f0a003e

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 802
    return-void

    .line 794
    :cond_1
    const v1, 0x7f0a006d

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method
