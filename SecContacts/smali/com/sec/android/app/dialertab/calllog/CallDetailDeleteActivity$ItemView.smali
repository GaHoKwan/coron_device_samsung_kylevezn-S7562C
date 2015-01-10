.class public Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;
.super Landroid/widget/LinearLayout;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 720
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 721
    return-void
.end method

.method private findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 2

    .prologue
    .line 749
    const v1, 0x7f090086

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 750
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    .line 751
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 753
    .end local v0           #check:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #check:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    .line 726
    .local v0, check:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 729
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    .line 735
    .local v0, check:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 738
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    .line 743
    .local v0, check:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 746
    :cond_0
    return-void
.end method
