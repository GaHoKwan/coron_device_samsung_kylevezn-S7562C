.class public Lcom/android/mms/util/LengthFilterWithToast;
.super Landroid/text/InputFilter$LengthFilter;
.source "LengthFilterWithToast.java"


# instance fields
.field private final mMax:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 17
    iput p1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mMax:I

    .line 18
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 23
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int v0, v2, v3

    .line 24
    .local v0, dlen:I
    iget v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mMax:I

    sub-int v1, v2, v0

    .line 25
    .local v1, keep:I
    if-lez v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/mms/util/LengthFilterWithToast;->mMax:I

    if-le v2, v3, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/util/LengthFilterWithToast;->showToast()V

    .line 28
    :cond_1
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public showToast()V
    .locals 4

    .prologue
    const v3, 0x7f0a050f

    const/4 v1, 0x0

    .line 32
    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 33
    .local v0, isAlreadyShown:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    :goto_1
    return-void

    .end local v0           #isAlreadyShown:Z
    :cond_0
    move v0, v1

    .line 32
    goto :goto_0

    .line 36
    .restart local v0       #isAlreadyShown:Z
    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    .line 37
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    .line 41
    :goto_2
    iget-object v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method
