.class public Lcom/sec/android/app/contacts/detail/ContactHistorySelectCheckBoxLayout;
.super Landroid/widget/LinearLayout;
.source "ContactHistorySelectCheckBoxLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 2

    .prologue
    .line 55
    const v1, 0x7f090158

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistorySelectCheckBoxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, check:Landroid/view/View;
    instance-of v1, v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 59
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
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistorySelectCheckBoxLayout;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    .line 34
    .local v0, check:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 37
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
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistorySelectCheckBoxLayout;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    .line 42
    .local v0, check:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 45
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistorySelectCheckBoxLayout;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    .line 49
    .local v0, check:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 52
    :cond_0
    return-void
.end method
