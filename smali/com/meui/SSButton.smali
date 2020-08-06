.class public Lcom/meui/SSButton;
.super Landroid/widget/Button;
.source "SSButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meui/SSButton$100000000;,
        Lcom/meui/SSButton$100000001;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/meui/SSButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/meui/SSButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/meui/SSButton;->init()V

    return-void
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Lcom/meui/SSButton$100000000;

    invoke-direct {v0, p0}, Lcom/meui/SSButton$100000000;-><init>(Lcom/meui/SSButton;)V

    invoke-virtual {p0, v0}, Lcom/meui/SSButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/meui/SSButton$100000001;

    invoke-direct {v0, p0}, Lcom/meui/SSButton$100000001;-><init>(Lcom/meui/SSButton;)V

    invoke-virtual {p0, v0}, Lcom/meui/SSButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
