.class public Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "SignaturePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SignaturePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "toShowToastLengthFilter"
.end annotation


# instance fields
.field private mMax:I

.field final synthetic this$0:Lcom/android/mms/ui/SignaturePreference;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SignaturePreference;I)V
    .locals 0
    .parameter
    .parameter "max"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;->this$0:Lcom/android/mms/ui/SignaturePreference;

    .line 193
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 194
    iput p2, p0, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;->mMax:I

    .line 196
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
    .line 201
    iget v1, p0, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 203
    .local v0, keep:I
    if-gtz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;->this$0:Lcom/android/mms/ui/SignaturePreference;

    #calls: Lcom/android/mms/ui/SignaturePreference;->showToast()V
    invoke-static {v1}, Lcom/android/mms/ui/SignaturePreference;->access$000(Lcom/android/mms/ui/SignaturePreference;)V

    .line 213
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method
