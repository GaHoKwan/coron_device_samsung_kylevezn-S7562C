.class Lcom/samsung/mms/content/MmsPartExportDialogActivity$MaximumCharacterLengthFilter;
.super Ljava/lang/Object;
.source "MmsPartExportDialogActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/content/MmsPartExportDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaximumCharacterLengthFilter"
.end annotation


# static fields
.field private static mMaxChars:Landroid/widget/Toast;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showMaxCharacterToast()V
    .locals 3

    .prologue
    .line 274
    sget-object v0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$MaximumCharacterLengthFilter;->mMaxChars:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$MaximumCharacterLengthFilter;->mMaxChars:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$MaximumCharacterLengthFilter;->mMaxChars:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a050f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$MaximumCharacterLengthFilter;->mMaxChars:Landroid/widget/Toast;

    .line 276
    sget-object v0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$MaximumCharacterLengthFilter;->mMaxChars:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    :cond_1
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v2, 0x0

    .line 246
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-object v2

    .line 249
    :cond_1
    if-eqz p4, :cond_0

    .line 250
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    rsub-int/lit8 v1, v3, 0x32

    .line 251
    .local v1, keep:I
    if-gtz v1, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$MaximumCharacterLengthFilter;->showMaxCharacterToast()V

    .line 253
    const-string v2, ""

    goto :goto_0

    .line 255
    :cond_2
    sub-int v3, p3, p2

    if-ge v1, v3, :cond_0

    .line 258
    sub-int v3, p3, p2

    if-ge v1, v3, :cond_0

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$MaximumCharacterLengthFilter;->showMaxCharacterToast()V

    .line 261
    if-eqz p1, :cond_0

    .line 262
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "Mms/MmsPartExportDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputFilter IndexOutOfBoundsException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v2, ""

    goto :goto_0
.end method
