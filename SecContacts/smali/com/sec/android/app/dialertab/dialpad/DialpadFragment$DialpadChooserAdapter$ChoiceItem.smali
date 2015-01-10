.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChoiceItem"
.end annotation


# instance fields
.field icon:Landroid/graphics/Bitmap;

.field id:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "s"
    .parameter "b"
    .parameter "i"

    .prologue
    .line 9313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9314
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    .line 9315
    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    .line 9316
    iput p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 9317
    return-void
.end method
