.class public Lcom/android/mms/ui/ActionbarTitleTextView;
.super Landroid/widget/TextView;
.source "ActionbarTitleTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;
    }
.end annotation


# static fields
.field public static ACTIONBAR_TEXTVIEW_SIZECHANGED:I


# instance fields
.field private final mPadding:I

.field private mSizeChangedListener:Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/ActionbarTitleTextView;->ACTIONBAR_TEXTVIEW_SIZECHANGED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mPadding:I

    .line 30
    return-void
.end method


# virtual methods
.method public getStrMaxWidth()I
    .locals 12

    .prologue
    .line 58
    iget-object v10, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mText:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 59
    const/4 v9, -0x1

    .line 84
    :goto_0
    return v9

    .line 61
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v6, 0x0

    .local v6, maxlength:I
    const/4 v5, 0x0

    .line 62
    .local v5, maxitem:I
    const-string v7, ""

    .line 63
    .local v7, name:Ljava/lang/String;
    const/4 v9, 0x0

    .line 66
    .local v9, strWidth:I
    iget-object v10, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mText:Ljava/lang/String;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, NameOrNumber:[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_1
    array-length v10, v1

    if-le v10, v3, :cond_2

    .line 71
    aget-object v10, v1, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v6, :cond_1

    .line 72
    aget-object v10, v1, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    .line 73
    move v5, v3

    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200fe

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 78
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 79
    .local v4, image_width:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 80
    .local v8, paint:Landroid/graphics/Paint;
    aget-object v0, v1, v5

    .line 82
    .local v0, MaxStr:Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x1e

    add-int v9, v10, v4

    .line 84
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    if-lez p1, :cond_0

    if-eq p1, p3, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mSizeChangedListener:Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mSizeChangedListener:Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;

    invoke-interface {v0}, Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;->onActionbarTitleSizeChanged()V

    .line 41
    :cond_0
    return-void
.end method

.method public setActionbarTitleText(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mText:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setClass(Ljava/lang/Object;)V
    .locals 1
    .parameter "myClass"

    .prologue
    .line 48
    instance-of v0, p1, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lcom/android/mms/ui/ComposeMessageFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/ui/ActionbarTitleTextView;->mSizeChangedListener:Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;

    .line 50
    :cond_0
    return-void
.end method
