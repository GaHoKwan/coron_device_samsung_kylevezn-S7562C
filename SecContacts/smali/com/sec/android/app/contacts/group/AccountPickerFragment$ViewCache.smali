.class final Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;
.super Ljava/lang/Object;
.source "AccountPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/AccountPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewCache"
.end annotation


# instance fields
.field accountName:Landroid/widget/TextView;

.field accountType:Landroid/widget/TextView;

.field checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const v0, 0x7f0900f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->accountType:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f0900fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->accountName:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f0900f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 232
    return-void
.end method
