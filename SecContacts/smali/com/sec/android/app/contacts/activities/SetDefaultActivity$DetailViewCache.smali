.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
.super Ljava/lang/Object;
.source "SetDefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailViewCache"
.end annotation


# instance fields
.field public final actionsViewContainer:Landroid/view/View;

.field public final data:Landroid/widget/TextView;

.field public final dataReverse:Landroid/widget/TextView;

.field public final icon:Landroid/widget/ImageView;

.field public final photo:Landroid/widget/ImageView;

.field public final radioBtn:Landroid/widget/RadioButton;

.field public final type:Landroid/widget/TextView;

.field public final typeReverse:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "view"
    .parameter "clickListener"

    .prologue
    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    const v0, 0x7f090319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    .line 859
    const v0, 0x7f09031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->icon:Landroid/widget/ImageView;

    .line 860
    const v0, 0x7f09030f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    .line 861
    const v0, 0x7f09031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    .line 862
    const v0, 0x7f090310

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    .line 863
    const v0, 0x7f09031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    .line 864
    const v0, 0x7f09031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->radioBtn:Landroid/widget/RadioButton;

    .line 866
    const v0, 0x7f090317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    return-void
.end method
