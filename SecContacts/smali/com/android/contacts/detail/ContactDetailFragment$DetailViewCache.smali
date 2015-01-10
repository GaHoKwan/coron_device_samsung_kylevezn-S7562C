.class public Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailViewCache"
.end annotation


# instance fields
.field public final actionButton:Landroid/widget/ImageView;

.field public final actionsViewContainer:Landroid/view/View;

.field public final blacklistIndicator:Landroid/view/View;

.field public final connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

.field public final data:Landroid/widget/TextView;

.field public final directorySvcUtilsAutoSyncIndicator:Landroid/view/View;

.field public final footer:Landroid/widget/TextView;

.field public final presenceIcon:Landroid/widget/ImageView;

.field public final primaryActionView:Landroid/view/View;

.field public final primaryIndicator:Landroid/view/View;

.field public rcsButtonRow:Landroid/widget/LinearLayout;

.field public rcsClickListener:Landroid/view/View$OnClickListener;

.field public rcs_ft_action:Landroid/widget/ImageView;

.field public rcs_im_action:Landroid/widget/ImageView;

.field public rcs_vt_action:Landroid/widget/ImageView;

.field public final secondaryActionButton:Landroid/widget/ImageView;

.field public final secondaryActionDivider:Landroid/view/View;

.field public final secondaryActionViewContainer:Landroid/view/View;

.field public final thirdActionButton:Landroid/widget/ImageView;

.field public final thirdActionDivider:Landroid/view/View;

.field public final thirdActionViewContainer:Landroid/view/View;

.field public final type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "view"
    .parameter "primaryActionClickListener"
    .parameter "secondaryActionClickListener"
    .parameter "thirdActionClickListener"

    .prologue
    .line 3397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsClickListener:Landroid/view/View$OnClickListener;

    .line 3398
    const v0, 0x7f090128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    .line 3399
    const v0, 0x7f090002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    .line 3400
    const v0, 0x7f09012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    .line 3401
    const v0, 0x7f09012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    .line 3402
    const v0, 0x7f09012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->blacklistIndicator:Landroid/view/View;

    .line 3403
    const v0, 0x7f09012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 3405
    const v0, 0x7f090126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    .line 3406
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3407
    const v0, 0x7f0900c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryActionView:Landroid/view/View;

    .line 3409
    const v0, 0x7f090129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    .line 3411
    const v0, 0x7f09012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionButton:Landroid/widget/ImageView;

    .line 3413
    const v0, 0x7f090127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    .line 3415
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3417
    const v0, 0x7f090132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    .line 3421
    const v0, 0x7f09012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->directorySvcUtilsAutoSyncIndicator:Landroid/view/View;

    .line 3424
    const v0, 0x7f090130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    .line 3426
    const v0, 0x7f090131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionViewContainer:Landroid/view/View;

    .line 3428
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3430
    const v0, 0x7f090134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionButton:Landroid/widget/ImageView;

    .line 3433
    const v0, 0x7f090133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionDivider:Landroid/view/View;

    .line 3436
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3437
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsClickListener:Landroid/view/View$OnClickListener;

    .line 3438
    const v0, 0x7f0902f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    .line 3439
    const v0, 0x7f0902f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_im_action:Landroid/widget/ImageView;

    .line 3440
    const v0, 0x7f0902fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_ft_action:Landroid/widget/ImageView;

    .line 3441
    const v0, 0x7f0902fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_vt_action:Landroid/widget/ImageView;

    .line 3442
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_im_action:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3443
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_ft_action:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3444
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_vt_action:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3446
    :cond_0
    return-void
.end method
