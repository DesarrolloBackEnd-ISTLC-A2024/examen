namespace examen.molder
{
    public class futbolista
    {
        public class Futbolista
        {
            public int futbolista_id { get; set; }
            public string nombre { get; set; }
            public string apellido { get; set; }
            public int fecha_nacimientosa { get; set; }
            public string nacionalidad { get; set; }
            public string equipo { get; set; }
            public string posicion { get; set; }


        }


        public class equipo
        {
            public int equipo_id { get; set; }
            public string nombre { get; set; }
            public string ciudad {  get; set; }
            public string pais {  get; set; }
            public string estadio { get; set; }
            public  DateTime  fundacion { get; set; }
            public string entrenador { get; set; }

        }
        public class historiicoequipo
        {
            public int historicoequipo_id { get; set; }
            public string futbolista_id { get; set; }
            public string cequipo_id { get; set; }
            public DateTime fecha_inicio { get; set; }
            public DateTime fecha_fin { get; set; }
         
        }

    }
}
