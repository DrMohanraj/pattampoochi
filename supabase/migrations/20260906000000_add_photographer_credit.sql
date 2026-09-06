-- Add photographer credit fields to photos so each entry can acknowledge its contributor
ALTER TABLE public.photos
  ADD COLUMN IF NOT EXISTS photographer_name text,
  ADD COLUMN IF NOT EXISTS photographer_instagram text;

COMMENT ON COLUMN public.photos.photographer_name IS 'புகைப்படம் எடுத்தவரின் பெயர்';
COMMENT ON COLUMN public.photos.photographer_instagram IS 'புகைப்படம் எடுத்தவரின் Instagram handle (@ இல்லாமல்)';
